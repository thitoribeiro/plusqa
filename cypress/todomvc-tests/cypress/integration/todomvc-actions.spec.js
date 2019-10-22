/// <reference types="cypress" />

import { TodoPage } from "../page-objects/todo-page";

describe('todo actions', () => {
  const todoPage = new TodoPage()

    beforeEach(() => {
      todoPage.navigate()

      todoPage.addTodo('Clean roon')

    })

  it('should add a new todo the list', () => {
    todoPage.validateTodoTxt(0, 'Clean room')
    cy.get('.toggle').should('not.be.checked')
  })

  it('should mark a todo as completed', () => {
    cy.get('.toggle').click()
    cy.get('label').should('have.css', 'text-decoration-line', 'line-through')
  })

  it('should clear completed todo', () => {
    cy.get('.toggle').click()
    
    cy.contains('Clear').click()

    cy.get('.todo-list').should('not.have.descendants', 'li')
  })
})