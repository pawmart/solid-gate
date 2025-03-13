package controllers

import (
	"github.com/beego/beego/v2/server/web"
)

type MainController struct {
	web.Controller
}

func (c *MainController) Prepare() {
	//lang := beego.AppConfig.DefaultString("language", "en-US")
	// Store the language in the Data map for the template
	c.Data["lang"] = "en-US"
	c.Data["Website"] = "solid-state.eu"
	c.Data["Email"] = "info@solid-state.eu"
}

func (c *MainController) Index() {
	c.TplName = "index.tpl"
}

func (c *MainController) About() {
	c.TplName = "about.tpl"
}
