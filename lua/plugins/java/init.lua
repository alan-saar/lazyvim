return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            settings = {
              java = {
                configuration = {
                  runtimes = {
                    {
                      name = "JavaSE-21",
                      path = "~/.sdkman/candidates/java/21.0.5-oracle",
                    },
                  },
                },
                format = {
                  settings = {
                    url = "~/dotfiles/config-files/jdtls-eclipse-java-google-style.xml",
                  },
                },
              },
            },
          },
        },
        setup = {
          jdtls = function()
            -- Your nvim-java configuration goes here
            require("java").setup({
              jdk = {
                auto_install = false,
              },
              -- root_markers = {
              --   "settings.gradle",
              --   "settings.gradle.kts",
              --   "pom.xml",
              --   "build.gradle",
              --   "mvnw",
              --   "gradlew",
              --   "build.gradle",
              --   "build.gradle.kts",
              -- },
            })
          end,
        },
      },
    },
  },
}
