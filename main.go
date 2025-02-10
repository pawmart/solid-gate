package main

import (
	_ "solid-gate/routers"
	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	beego.Run()
}

