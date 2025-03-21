#!/usr/bin/env bash

function usage() {
	echo "Usage: $0 [-i increment] [-p padding] <pattern> <start> <end>"
	exit 1
}

OPTSTRING=":i:p:"

while getopts ${OPTSTRING} arg; do
	case ${arg} in
	i) increment=${OPTARG} ;;
	p) padding=${OPTARG} ;;
	*) usage ;;
	esac
done

shift $((OPTIND - 1))

pattern=$1
start=$2
end=$3
increment=${increment:-1}
padding=${padding:-1}

if [ -z ${pattern} ] || [ -z ${start} ] || [ -z ${end} ]; then
	echo "error: Missing arguments"
	usage
fi

if ! [[ ${pattern} =~ \{\} ]]; then
	echo "error: Pattern must contain {}"
	usage
fi

if ! [[ ${start} =~ ^[0-9]+$ ]] || ! [[ ${end} =~ ^[0-9]+$ ]]; then
	echo "error: Start and end must be number"
	usage
fi

for ((i = start; i <= end; i += increment)); do
	num=$(printf "%0${padding}d" ${i})
	echo ${pattern//\{\}/$num}
done
