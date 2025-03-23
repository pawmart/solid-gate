package controllers

type ErrorController struct {
	BaseController
}

func (c *ErrorController) Error404() {
	c.TplName = "not-found.tpl"
}
