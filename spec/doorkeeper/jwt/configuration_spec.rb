# frozen_string_literal: true

require "spec_helper"

describe(Doorkeeper::JWT, "#configuration") do
  subject(:configuration) { described_class.configuration }

  describe "token_payload" do
    it "is nil by default" do
      described_class.configure {}

      expect(configuration.token_payload).to be_a(Proc)
    end

    it "sets the block that is accessible via authenticate_admin" do
      block = proc {}

      described_class.configure do
        token_payload(&block)
      end

      expect(configuration.token_payload).to eq(block)
    end
  end

  describe "token_headers" do
    it "is nil by default" do
      described_class.configure {}

      expect(configuration.token_headers).to be_a(Proc)
    end

    it "sets the block that is accessible via authenticate_admin" do
      block = proc {}

      described_class.configure do
        token_headers(&block)
      end

      expect(configuration.token_headers).to eq(block)
    end
  end

  describe "signing_method" do
    it "defaults to nil" do
      described_class.configure {}

      expect(configuration.signing_method).to be_nil
    end

    it "can change the value" do
      described_class.configure do
        signing_method :rs512
      end

      expect(configuration.signing_method).to eq :rs512
    end
  end

  describe "use_application_secret" do
    it "defaults to false" do
      described_class.configure {}

      expect(configuration.use_application_secret).to be false
    end

    it "changes the value of secret_key to the application's secret" do
      described_class.configure do
        use_application_secret true
      end

      expect(configuration.use_application_secret).to be true
    end
  end

  describe "secret_key" do
    it "defaults to nil" do
      described_class.configure {}

      expect(configuration.secret_key).to be_nil
    end

    it "can change the value" do
      described_class.configure do
        secret_key "foo"
      end

      expect(configuration.secret_key).to eq "foo"
    end
  end

  describe "secret_key_path" do
    it "defaults to nil" do
      described_class.configure {}

      expect(configuration.secret_key_path).to be_nil
    end

    it "can change the value" do
      described_class.configure do
        secret_key_path File.join("..", "support", "1024key.pem")
      end

      expect(configuration.secret_key_path).to eq "../support/1024key.pem"
    end
  end

  it "raises an exception when configuration is not set" do
    expect { described_class.configuration }
      .to raise_error Doorkeeper::JWT::MissingConfiguration
  end
end
