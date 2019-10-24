

describe "post" do
  context "when new user" do
    before do
      @new_user = build(:user).to_hash
      @result = ApiUser.save(@new_user)
    end
    it { expect(@result.response.code).to eql "200" }
  end

  context "when wrong email" do
    before do
      @new_user = build(:user_wrong_email).to_hash

      @result = HTTParty.post(
        "http://localhost:3001/user",
        body: @new_user.to_json,
        headers: {
          "Content-Type" => "application/json",
        },
      )
      puts @result
    end
    it { expect(@result.response.code).to eql "412"}
  end
end

