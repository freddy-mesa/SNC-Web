class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "dashboard", action: "index")
        "/index"(controller: "dashboard", action: "index")
        "/index.gsp"(controller: "dashboard", action: "index")
        "500"(view:'/error')
	}
}
