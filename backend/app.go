package gaego

import (
	"fmt"
	"net/http"
)

func init() {
	http.HandleFunc("/", indexHandler)
}

func indexHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, world!")
}
