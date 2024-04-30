// Code generated by timoni. DO NOT EDIT.

//timoni:generate timoni import crd -f https://github.com/prometheus-operator/prometheus-operator/releases/download/v0.68.0/stripped-down-crds.yaml

package v1

import "strings"

#PrometheusRule: {
	apiVersion: "monitoring.coreos.com/v1"
	kind:       "PrometheusRule"
	metadata!: {
		name!: strings.MaxRunes(253) & strings.MinRunes(1) & {
			string
		}
		namespace!: strings.MaxRunes(63) & strings.MinRunes(1) & {
			string
		}
		labels?: {
			[string]: string
		}
		annotations?: {
			[string]: string
		}
	}
	spec!: #PrometheusRuleSpec
}
#PrometheusRuleSpec: {
	groups?: [...{
		interval?:                  =~"^(0|(([0-9]+)y)?(([0-9]+)w)?(([0-9]+)d)?(([0-9]+)h)?(([0-9]+)m)?(([0-9]+)s)?(([0-9]+)ms)?)$"
		limit?:                     int
		name:                       strings.MinRunes(1)
		partial_response_strategy?: =~"^(?i)(abort|warn)?$"
		rules?: [...{
			alert?: string
			annotations?: {
				[string]: string
			}
			expr: (int | string) & {
				string
			}
			for?:             =~"^(0|(([0-9]+)y)?(([0-9]+)w)?(([0-9]+)d)?(([0-9]+)h)?(([0-9]+)m)?(([0-9]+)s)?(([0-9]+)ms)?)$"
			keep_firing_for?: strings.MinRunes(1) & {
				=~"^(0|(([0-9]+)y)?(([0-9]+)w)?(([0-9]+)d)?(([0-9]+)h)?(([0-9]+)m)?(([0-9]+)s)?(([0-9]+)ms)?)$"
			}
			labels?: {
				[string]: string
			}
			record?: string
		}]
	}]
}
