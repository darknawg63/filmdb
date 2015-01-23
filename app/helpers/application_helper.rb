module ApplicationHelper

        def nav_items
        [
            {
             displaytext: 'Films',
             controllername: 'films',
             linkurl: films_path
            },
            {
             displaytext: 'Actors',
             controllername: 'actors',
             linkurl: actors_path
            }
        ]
    end

    def display_nav_item(displaytext, controllername, linkurl)
        raw("<li#{controller_name == controllername ? ' class="active"' : ''}>#{link_to displaytext, linkurl}</li>")
    end
end
