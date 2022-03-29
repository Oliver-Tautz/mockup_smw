# List of problems/bugs with ottr smw

## Design

* Dont use Variables extension if possible (will be depreciated)
    * this will be problematic

## Bugs
* Not quoting strings leads to cryptic error
* instance creation with form errors with this code:

```
{{ottr:MultiInstanceCreation
|template_1={{ottr:SingleInstanceForMultiCreation1
|arg_1="some author, another author"
|arg_2="some title"
|arg_3="2022"
}}
}}

```

* integer type is not rendered correctly on instance page:

```
<ottr>
dpm:Publication("some author, another author", "some title",  2022). 
</ottr>
```
![image](https://user-images.githubusercontent.com/53008918/160371254-04b3b68c-98d4-493d-b4ac-165ff3e4b1f2.png)

## Features

* [add dependencies to extension.json](https://www.mediawiki.org/wiki/Special:MyLanguage/Manual:Developing_extensions#Handling_dependencies)
