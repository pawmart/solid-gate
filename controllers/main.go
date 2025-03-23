package controllers

import (
	"fmt"
	"path/filepath"
	"strings"
)

type MainController struct {
	BaseController
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

func (c *MainController) SubmitForm() {
	fullName := c.GetString("fullName")
	email := c.GetString("email")
	phone := c.GetString("phone")
	message := c.GetString("message")

	fmt.Printf("Get Quote - Fullname: %s, email: %s, phone: %s, meessage: %s", fullName, email, phone, message)

	// TODO send a mail

	c.Redirect("/form-success", 302)
}

func (c *MainController) FormSuccess() {
	c.TplName = "form-success.tpl"
}
