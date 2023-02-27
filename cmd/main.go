/*
 * .-'_.---._'-.
 * ||####|(__)||   Protect your secrets, protect your business.
 *   \\()|##//       Secure your sensitive data with Aegis.
 *    \\ |#//                  <aegis.ist>
 *     .\_/.
 */

package main

import (
	"github.com/zerotohero-dev/aegis-core/log"
	"github.com/zerotohero-dev/aegis-sdk-go/sentry"
)

func main() {
	log.InfoLn("Starting Aegis Sidecar")
	go sentry.Watch()
	select {} // block forever
}
