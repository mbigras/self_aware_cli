# Self Aware CLI

>An app that is self aware.

## Usage example

```
cmds=(foo bar baz fail)
for cmd in "${cmds[@]}"
do
	./app $cmd
	echo $?
done
foo hello world!
0
bar hello world!
0
hello world!
foo hello world!
bar hello world!
baz hello world!
0
ls: idontexist: No such file or directory
1
```

## History

At work, I use Jira, [go-jira](https://github.com/Netflix-Skunkworks/go-jira) keeps me productive.
Go-jira's configuration file is a template that renders to a YAML file that contains self aware shell scripts.
This feature lets me extend it to meet the needs of my team.

## Links

* http://www.stuartellis.name/articles/erb/