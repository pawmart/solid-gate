package controllers

import (
	"github.com/beego/beego/v2/server/web"
	"path/filepath"
	"strings"
)

type MainController struct {
	web.Controller
}

func (c *MainController) Prepare() {
	host := c.Ctx.Request.Host

	langMap := map[string]string{
		"es": "es-ES",
		"fr": "fr-FR",
		"pl": "pl-PL",
	}

	// Default language
	lang := "en-US"

	// Extract subdomain if present
	if parts := strings.SplitN(host, ".", 2); len(parts) > 1 {
		subdomain := parts[0]
		if mappedLang, exists := langMap[subdomain]; exists {
			lang = mappedLang
		}
	}

	// Store the language in the Data map for the template
	c.Data["lang"] = lang
	c.Data["Website"] = "solid-state.eu"
	c.Data["Email"] = "info@solid-state.eu"
	c.Layout = "layout.tpl"
}

func (c *MainController) Index() {
	c.TplName = "index.tpl"
}

func (c *MainController) About() {
	c.TplName = "about.tpl"
}

func (c *MainController) Catalog() {
	c.TplName = "catalog.tpl"
}

func (c *MainController) Contact() {
	c.TplName = "contact.tpl"
}

func (c *MainController) Gallery() {
	categories := map[string]string{
		"windows": "static/img/gallery/windows",
		"doors":   "static/img/gallery/doors",
		"blinds":  "static/img/gallery/blinds",
	}

	galleryItems := make(map[string][]string)

	extensions := []string{"jpg", "jpeg", "png", "webp"}

	for category, path := range categories {
		var files []string
		for _, ext := range extensions {
			matches, err := filepath.Glob(filepath.Join(path, "*."+ext))
			if err == nil {
				files = append(files, matches...)
			}
		}

		for i, file := range files {
			files[i] = "/" + strings.ReplaceAll(file, "\\", "/")
		}

		galleryItems[category] = files
	}

	c.Data["GalleryItems"] = galleryItems
	c.TplName = "gallery.tpl"
}

func (c *MainController) Faq() {
	c.TplName = "faq.tpl"
}
