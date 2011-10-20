require 'fileutils'

module Guard
  class Pow
    class Runner

      def restart_pow
        FileUtils.mkdir 'tmp' unless File.directory?("tmp")        
        if File.exists?("script/restart_pow")
          system("script/restart_pow")
        else
          FileUtils.touch 'tmp/restart.txt'
        end
        UI.info "Pow restarted."
        Notifier.notify("Pow restarted.", :title => "Pow", :image => :success)
      end

    end
  end
end
