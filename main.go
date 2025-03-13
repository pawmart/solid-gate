package main

import (
	beego "github.com/beego/beego/v2/server/web"
	"github.com/beego/i18n"
	_ "solid-gate/routers"
)

func main() {
	beego.AddFuncMap("i18n", i18n.Tr)
	beego.Run()
}
