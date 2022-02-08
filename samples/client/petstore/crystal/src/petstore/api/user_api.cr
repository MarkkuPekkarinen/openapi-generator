# #OpenAPI Petstore
#
##This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
#
#The version of the OpenAPI document: 1.0.0
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 6.0.0-SNAPSHOT
#

require "uri"

module Petstore
  class UserApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create user
    # This can only be done by the logged in user.
    # @param user [User] Created user object
    # @return [nil]
    def create_user(user : User)
      create_user_with_http_info(user)
      nil
    end

    # Create user
    # This can only be done by the logged in user.
    # @param user [User] Created user object
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_user_with_http_info(user : User)
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.create_user ..."}
      end
      # verify the required parameter "user" is set
      if @api_client.config.client_side_validation && user.nil?
        raise ArgumentError.new("Missing the required parameter 'user' when calling UserApi.create_user")
      end
      # resource path
      local_var_path = "/user"

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = user.to_json

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["api_key"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"UserApi.create_user",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Creates list of users with given input array
    # @param user [Array(User)] List of user object
    # @return [nil]
    def create_users_with_array_input(user : Array(User))
      create_users_with_array_input_with_http_info(user)
      nil
    end

    # Creates list of users with given input array
    # @param user [Array(User)] List of user object
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_users_with_array_input_with_http_info(user : Array(User))
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.create_users_with_array_input ..."}
      end
      # verify the required parameter "user" is set
      if @api_client.config.client_side_validation && user.nil?
        raise ArgumentError.new("Missing the required parameter 'user' when calling UserApi.create_users_with_array_input")
      end
      # resource path
      local_var_path = "/user/createWithArray"

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = user.to_json

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["api_key"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"UserApi.create_users_with_array_input",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#create_users_with_array_input\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Creates list of users with given input array
    # @param user [Array(User)] List of user object
    # @return [nil]
    def create_users_with_list_input(user : Array(User))
      create_users_with_list_input_with_http_info(user)
      nil
    end

    # Creates list of users with given input array
    # @param user [Array(User)] List of user object
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_users_with_list_input_with_http_info(user : Array(User))
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.create_users_with_list_input ..."}
      end
      # verify the required parameter "user" is set
      if @api_client.config.client_side_validation && user.nil?
        raise ArgumentError.new("Missing the required parameter 'user' when calling UserApi.create_users_with_list_input")
      end
      # resource path
      local_var_path = "/user/createWithList"

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = user.to_json

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["api_key"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"UserApi.create_users_with_list_input",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#create_users_with_list_input\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Delete user
    # This can only be done by the logged in user.
    # @param username [String] The name that needs to be deleted
    # @return [nil]
    def delete_user(username : String)
      delete_user_with_http_info(username)
      nil
    end

    # Delete user
    # This can only be done by the logged in user.
    # @param username [String] The name that needs to be deleted
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(username : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.delete_user ..."}
      end
      # verify the required parameter "username" is set
      if @api_client.config.client_side_validation && username.nil?
        raise ArgumentError.new("Missing the required parameter 'username' when calling UserApi.delete_user")
      end
      # resource path
      local_var_path = "/user/{username}".sub("{" + "username" + "}", URI.encode_path(username.to_s).gsub("%2F", "/"))

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["api_key"]

      data, status_code, headers = @api_client.call_api(:DELETE,
                                                        local_var_path,
                                                        :"UserApi.delete_user",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get user by user name
    # @param username [String] The name that needs to be fetched. Use user1 for testing.
    # @return [User]
    def get_user_by_name(username : String)
      data, _status_code, _headers = get_user_by_name_with_http_info(username)
      data
    end

    # Get user by user name
    # @param username [String] The name that needs to be fetched. Use user1 for testing.
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_user_by_name_with_http_info(username : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.get_user_by_name ..."}
      end
      # verify the required parameter "username" is set
      if @api_client.config.client_side_validation && username.nil?
        raise ArgumentError.new("Missing the required parameter 'username' when calling UserApi.get_user_by_name")
      end
      # resource path
      local_var_path = "/user/{username}".sub("{" + "username" + "}", URI.encode_path(username.to_s).gsub("%2F", "/"))

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "User"

      # auth_names
      auth_names = [] of String

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"UserApi.get_user_by_name",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#get_user_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return User.from_json(data), status_code, headers
    end

    # Logs user into the system
    # @param username [String] The user name for login
    # @param password [String] The password for login in clear text
    # @return [String]
    def login_user(username : String, password : String)
      data, _status_code, _headers = login_user_with_http_info(username, password)
      data
    end

    # Logs user into the system
    # @param username [String] The user name for login
    # @param password [String] The password for login in clear text
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def login_user_with_http_info(username : String, password : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.login_user ..."}
      end
      # verify the required parameter "username" is set
      if @api_client.config.client_side_validation && username.nil?
        raise ArgumentError.new("Missing the required parameter 'username' when calling UserApi.login_user")
      end
      pattern = Regexp.new(/^[a-zA-Z0-9]+[a-zA-Z0-9\.\-_]*[a-zA-Z0-9]+$/)
      if @api_client.config.client_side_validation && username !~ pattern
        raise ArgumentError.new("invalid value for \"username\" when calling UserApi.login_user, must conform to the pattern #{pattern}.")
      end

      # verify the required parameter "password" is set
      if @api_client.config.client_side_validation && password.nil?
        raise ArgumentError.new("Missing the required parameter 'password' when calling UserApi.login_user")
      end
      # resource path
      local_var_path = "/user/login"

      # query parameters
      query_params = Hash(String, String).new
      query_params["username"] = username.to_s unless username.nil?
      query_params["password"] = password.to_s unless password.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "String"

      # auth_names
      auth_names = [] of String

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"UserApi.login_user",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#login_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return String.from_json(data), status_code, headers
    end

    # Logs out current logged in user session
    # @return [nil]
    def logout_user()
      logout_user_with_http_info()
      nil
    end

    # Logs out current logged in user session
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def logout_user_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.logout_user ..."}
      end
      # resource path
      local_var_path = "/user/logout"

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["api_key"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"UserApi.logout_user",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#logout_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Updated user
    # This can only be done by the logged in user.
    # @param username [String] name that need to be deleted
    # @param user [User] Updated user object
    # @return [nil]
    def update_user(username : String, user : User)
      update_user_with_http_info(username, user)
      nil
    end

    # Updated user
    # This can only be done by the logged in user.
    # @param username [String] name that need to be deleted
    # @param user [User] Updated user object
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_user_with_http_info(username : String, user : User)
      if @api_client.config.debugging
        Log.debug {"Calling API: UserApi.update_user ..."}
      end
      # verify the required parameter "username" is set
      if @api_client.config.client_side_validation && username.nil?
        raise ArgumentError.new("Missing the required parameter 'username' when calling UserApi.update_user")
      end
      # verify the required parameter "user" is set
      if @api_client.config.client_side_validation && user.nil?
        raise ArgumentError.new("Missing the required parameter 'user' when calling UserApi.update_user")
      end
      # resource path
      local_var_path = "/user/{username}".sub("{" + "username" + "}", URI.encode_path(username.to_s).gsub("%2F", "/"))

      # query parameters
      query_params = Hash(String, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, (String | ::File)).new

      # http body (model)
      post_body = user.to_json

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["api_key"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"UserApi.update_user",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: UserApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end
  end
end
