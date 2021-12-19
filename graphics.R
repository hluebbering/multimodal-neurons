
# Neuron Description Table
df <- data.frame(
  "names" = c(
    "Region Neurons", "Person Neurons", "Emotion Neurons", 
    "Person Trait Neurons", "Holiday Neurons", "Fictional Neurons", "Brand Neurons"),
  
  "Description" = c("Respond to content associated with a geographic region", 
                    "Respond to content associated with a specific person", 
                    "Respond to facial expressions, words, and emotion-based content",
                    "Detect gender and age", 
                    "Recognize names, decor, and traditions around a holiday", 
                    "Represent characters and concepts within fictional universes", 
                    "Recognize the identities of brands"),
  
  "Examples" = c("Europe, California, Japan, Australia", 
                 "Beyonce, Miley Cyrus, Obama ", 
                 "excited, laughing, sleepy, serious",
                 "female, elderly, adolescents", 
                 "Halloween, birthday, Hanukkah", 
                 "Pokemon, Star Wars, Marvel", 
                 "Nike, NASA, Spotify, big tech"))

# df2 <- df %>%
#   mutate(
#     indic = color_tile("#EBF2DC", "#DEECD3")(row.names(.)),
#     Examples = color_bar("whitesmoke")(Examples)) %>%
#   select(indic, everything()) %>%
#   kable(escape = F, col.names = c("", "Name", "Description", "Examples")) %>%
#   kable_styling(full_width = F, font_size = 10, html_font = "Roboto", bootstrap_options = c("hover", "condensed")) %>%
#   column_spec(3, color = "#00000099") %>%
#   row_spec(0, background = "#E6EEE1") %>%
#   column_spec(4, width = "3cm", color = "#00000099") %>%
#   column_spec(1, width = "0.25cm", extra_css = "font-family: 'Roboto Condensed'; font-size: 9pt;", bold = T) %>%
#   add_footnote(label = "Selected neurons from the final layer of various CLIP models, organized into groupings of similar neurons.")



df1 <- kable(df, escape = F, col.names = c("", "Description", "Examples")) %>%
  kable_styling(full_width = F, font_size = 10, html_font = "Roboto", bootstrap_options = c("hover", "condensed")) %>%
  column_spec(2, color = "#00000099") %>%
  column_spec(3, color = "#00000099") %>%
  row_spec(0, background = "#E6EEE1", extra_css = "font-family: 'Roboto Condensed';") %>%
  column_spec(1,  extra_css = "font-family: 'Roboto Condensed';", bold = T) 




# Filled density plot provides a view of the conditional distribution of cut at the different price levels
thm <- theme_minimal() + theme(text = element_text(size = 16))
thm2 <- theme_ipsum() + theme(text = element_text(size = 12, family = "Roboto"),
                              plot.caption = element_text(size = 10),
                              legend.text = element_text(size = 8),
                              legend.title = "none") 

fill1 <- ggplot(diamonds) +
  geom_density(aes(x = price, y = ..count.., fill = cut), position = "fill") +
  ylab(NULL) + thm

stack1 <- ggplot(diamonds) +
  geom_density(aes(x = price, y = stat(count), fill = cut), position = "stack") + thm



# You can use position="fill" to produce a conditional density estimate
g1 <- ggplot(data=diamonds, aes(x=price, group=cut, fill=cut)) +
  geom_density(adjust=1.5, position="fill") +
  theme_ipsum()

g2 <- ggplot(diamonds, aes(carat, after_stat(count), fill = cut)) +
  geom_density(position = "fill") + 
  scale_fill_manual(values = c("pink", "hotpink", "green", "blue", "purple")) +
  thm2




