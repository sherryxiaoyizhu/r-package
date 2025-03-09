# Developing R Packages
Below are basic instructions and key pointers for building a simple R package using ```devtools```.

### Install required packages
```
install.packages("roxygen2")
install.packages("usethis")
```
### Add @importFrom
Need to specify ```#' @importFrom``` (required series functions in a package) in the ```.R``` file, and run ```roxygen2::roxygenise()``` to add to NAMESPACE automatically.

### Add a valid license required by CRAN for package distribution
1. **Use a Standard License with `usethis`**  
   Run one of the following functions in R, depending on the license you want:

   - **MIT License** (Common for open-source projects):
     ```r
     usethis::use_mit_license("Your Name")
     ```
   - **GPL-3 License** (Popular for R packages):
     ```r
     usethis::use_gpl3_license()
     ```

   These functions will:
   - Update your `DESCRIPTION` file with a proper `License:` field.
   - Create a `LICENSE` file in your package directory.

2. **Manually Edit the `DESCRIPTION` File**  
   If you prefer, open your `DESCRIPTION` file and modify the **License** field. For example:

   ```r
   License: MIT + file LICENSE
   ```
   or
   ```r
   License: GPL-3
   ```

   If your license requires a separate file (like MIT), make sure you have a `LICENSE` file in your package directory.

3. **Re-check Your Package**  
   After updating the license, run:
   ```r
   devtools::check()
   ```
   to verify that the warning is gone.
   
### R Studio
For some actions, you don’t need to write code manually—you can simply click on buttons in RStudio's interface to accomplish the task.

> Tools -> Project Options -> Check "Generate documentation with Roxygen"

> On the top right corner: 

- Build -> Check : to examine through the package
- Build -> More -> Document : to create the .Rd file under /man
- Build -> More -> Clean and Install : 

> Preview : to preview the current file .md, .Rd etc.

### Install the package
```
library(devtools)
install_github('sherryxiaoyizhu/r-package')
library(sherrysPackage) # the package name!
```

### Use the package
```
y1 <- rnorm(1000)
visualize(y1) # the function name!
```
![](man/Rplot01.png)


```
y2 <- rexp(1000)
visualize(y2)
```
![](man/Rplot02.png)

### Reference
- [Developing R Packages](https://app.datacamp.com/learn/courses/developing-r-packages)
- [How to Create Your Own Package in RStudio](https://www.youtube.com/watch?v=rsQoEgWeJMk)
