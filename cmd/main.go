/*
 * .-'_.---._'-.
 * ||####|(__)||   Protect your secrets, protect your business.
 *   \\()|##//       Secure your sensitive data with Aegis.
 *    \\ |#//                  <aegis.z2h.dev>
 *     .\_/.
 */

package main

import (
	"github.com/zerotohero-dev/aegis-sdk-go/sentry"
)

func main() {
	go sentry.Watch()
	select {} // block forever
}
