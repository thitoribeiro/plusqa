///<reference types="cypress" />

it('should b able to add a new todo to the list', () => {
    cy.visit('http://todomvc-app-for-testing.surge.sh/?delay-new-todo=5000')
    
    cy.get('.new-todo', {timeout: 6000}).type("Clean room{enter}")

})