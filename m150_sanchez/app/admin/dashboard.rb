ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    h1 "Aktuell verfügbare Jobs: #{Job.where(verfügbar: true).count}"

    columns do
      column do
        panel "Info" do
          para "Herzlich Willkommen zum Job Portal ! "
          para "Hier finden Sie verschiedene Jobs aus verschiedenen Kategorien."
        end
      end
    end
  end # content
end
