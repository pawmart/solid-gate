package routers

import (
	"fmt"
	beego "github.com/beego/beego/v2/server/web"
	"github.com/beego/i18n"
	"log"
	"solid-gate/controllers"
	"strings"
)

func init() {

	if err := loadLocalization(); err != nil {
		log.Fatalf("Localization setup failed: %v", err)
	}

	beego.Router("/", &controllers.MainController{}, "get:Index")
	beego.Router("/about", &controllers.MainController{}, "get:About")
	beego.Router("/catalog", &controllers.MainController{}, "get:Catalog")
	beego.Router("/contact", &controllers.MainController{}, "get:Contact")
	beego.Router("/gallery", &controllers.MainController{}, "get:Gallery")
	beego.Router("/faq", &controllers.MainController{}, "get:Faq")
}

// loadLocalization loads supported languages and locale files
func loadLocalization() error {
	// Get supported languages from app.conf
	langs, err := beego.AppConfig.String("langs")
	if err != nil {
		return fmt.Errorf("failed to load supported languages from app.conf: %w", err)
	}
	langsArr := strings.Split(langs, "|")
	for _, lang := range langsArr {
		// Load locale files for each language
		if err := i18n.SetMessage(lang, "conf/"+lang+".ini"); err != nil {
			return fmt.Errorf("failed to load locale file for %s: %w", lang, err)
		}
	}
	log.Printf("Supported languages loaded: %v", langsArr)
	return nil
}
