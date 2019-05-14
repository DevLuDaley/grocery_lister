module ItemsHelper #actionview will run this file and other all helpers
    def li_class_for_item(item)
        "completed" if item.complete?
    end

end