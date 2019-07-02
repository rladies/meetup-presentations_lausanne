```{r, init, message=FALSE, warning=F, echo=F}
require(tidyverse)
require(GGally)
require(knitr)
# import data
data(iris)
```

## Aim
The aim is to test work how workflowr works, by using the *Iris* flower [data set](http://archive.ics.uci.edu/ml/datasets/Iris).


## Data Exploration
```{r, tidy, warning=F}
# tidy/transform data
head(iris)
summary(iris) # no NA, good
ggpairs(iris, aes(colour = Species, alpha = 0.4))
# keep virginica & setosa, looks like the most different species
# and create new variables
iris %>%
  filter(Species != "versicolor") %>%
  mutate(Sepal.Ratio = Sepal.Length/Sepal.Width,
         Petal.Ratio = Petal.Length/Petal.Width) -> iris
```


## Data Modeling
```{r, model, warning=F}
ggplot(iris, aes(x = Petal.Ratio, y = Sepal.Ratio, colour = Species)) + 
  geom_point() +
  ggtitle("Iris Species by Petal and Sepal Ratio")
iris %>%
  mutate(is.setosa =  as.numeric(Species == "setosa")) -> iris
fit_lm <- lm(is.setosa ~ Petal.Ratio + Sepal.Ratio, data = iris)
summary(fit_lm)
predicted <-  as.numeric(predict(fit_lm) > 0.5)
prediction_results = table(iris %>% pull(is.setosa), predicted)
kable(prediction_results)
```




```{r, model, warning=F}
ggplot(iris, aes(x = Petal.Ratio, y = Sepal.Ratio, colour = Species)) + 
  geom_point() +
  ggtitle("Iris Species by Petal and Sepal Ratio")
iris %>%
  mutate(is.setosa =  as.numeric(Species == "setosa")) -> iris
# Using out of sample data for prediction
sample_training = sample(1:nrow(iris), 0.75*nrow(iris)) # take 75% of observations for training
iris %>%
  slice(sample_training) -> iris_training
iris %>%
  slice(-sample_training) -> iris_test
fit_lm_training <- lm(is.setosa ~ Petal.Ratio + Sepal.Ratio, data = iris_training)
summary(fit_lm_training)

predicted <-  as.numeric(predict.lm(fit_lm_training, iris_test) > 0.5)
prediction_results = table(iris_test %>% pull(is.setosa), predicted)
kable(prediction_results)
```