module ActionDispatch
  module Http
    module Parameters
      def parameters
        params = get_header("action_dispatch.request.parameters")
        return params if params

        params = begin
                   request_parameters.merge(query_parameters)
                 rescue EOFError, ActionController::BadRequest => e
                   if e.is_a?(EOFError) || e.cause.is_a?(EOFError)
                     query_parameters.dup
                   else
                     raise
                   end
                 end
        params.merge!(path_parameters)
        set_header("action_dispatch.request.parameters", params)
        params
      end
    end
  end
end
