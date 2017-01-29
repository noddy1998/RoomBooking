<cfscript>

// scope handling
	// lifespan of a untouched application scope
	this.applicationTimeout = createTimeSpan( 1, 0, 0, 0 );

	// session handling enabled or not
	this.sessionManagement = true;
	// cfml or jee based sessions
	this.sessionType = "cfml";
	// untouched session lifespan
	this.sessionTimeout = createTimeSpan( 0, 8, 0, 0 );
	this.sessionStorage = "memory";

	// client scope enabled or not
	this.clientManagement = false;
	this.clientTimeout = createTimeSpan( 90, 0, 0, 0 );
	this.clientStorage = "cookie";

	// using domain cookies or not
	this.setDomainCookies = false;
	this.setClientCookies = true;

	// prefer the local scope at unscoped write
	this.localMode = "classic";

	// buffer the output of a tag/function body to output in case of a exception
	this.bufferOutput = true;
	this.compression = false;
	this.suppressRemoteComponentContent = false;

// request
	// max lifespan of a running request
	this.requestTimeout=createTimeSpan(0,0,0,50);

// charset
	this.charset.web="UTF-8";
	this.charset.resource="UTF-8";
	this.scopeCascading = "standard";
	this.tag.location.addtoken = "no";

	this.serialization.preservecaseforstructkey=true;

	this.javaSettings = {
    	LoadPaths = ["/miscellaneous"]
  	};


//=====================================================================
//= 	Test Databases
//=====================================================================
  	// Embedded h2 Database lucee only
  	if(server.coldfusion.productname == "Lucee"){
		this.datasources["rbstesting"] = {
			class: "org.h2.Driver",
			connectionString: "jdbc:h2:file:#expandPath('/db/h2/')#rbstesting;MODE=MySQL",
			username: "sa",
			password: ""
		};
  	} else {
	// ACF11 Derby
		//this.datasources["rbstesting"] = {
		//	  driver: 'Apache Derby Embedded'
		//	, database: expandPath('.') &  '/db/derby/rbstesting/'
		//};

  	}


</cfscript>