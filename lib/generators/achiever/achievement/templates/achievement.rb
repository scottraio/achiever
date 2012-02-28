class Achievements::<%= file_name.classify %> < Achievement

    def award?
      true
    end

    def awarded
      # give the user points, or send a congrats email here
      Rails.logger.info "Achievement: First Book awarded!"
    end

end
