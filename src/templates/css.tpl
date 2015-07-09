.<%= prefix %> {\n
    background-image: url(<%= backgroundImage %>);\n
    background-repeat: no-repeat;\n
    display: block;\n
    line-height: 0px;\n
}\n

.<%= prefix %> span {\n
    display: inline-block;\n
    width: 100%;\n
    line-height: 0px;\n
}\n

<% $.map(sprites, function (sprite) { %>
\n
.<%= prefix %>-<%= sprite.name %> {\n
    background-size: <%= 100*dimensions.width/sprite.image.width %>%;\n
    background-position: <%= 100*(sprite.left()/dimensions.width)/(1 - sprite.image.width/dimensions.width || 0.00000000000001) %>% <%= 100*(sprite.top()/dimensions.height)/(1 - sprite.image.height/dimensions.height || 0.00000000000001) %>%;\n
}\n
.<%= prefix %>-<%= sprite.name %> span {
	padding-bottom: <%= 100*sprite.image.height/sprite.image.width %>%;
}
<% }); %>