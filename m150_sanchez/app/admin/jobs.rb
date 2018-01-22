ActiveAdmin.register Job do
  

    permit_params :titel, :beschreibung, :beschäftigung, :verfügbar, :berufsfeld

    filter :titel
    filter :beschreibung
    filter :beschäftigung
    filter :verfügbar
    filter :berufsfeld

    index do 
      column :titel
      column :beschreibung
      column :beschäftigung do  |job| "#{job.beschäftigung} %" end
      column :berufsfeld
      column :verfügbar
      column "Details" do |job|
        link_to 'Details', admin_job_path(job)
      end
    end

    show do
      attributes_table do
        row :titel
        row :beschreibung
        row :beschäftigung
        row :berufsfeld
        row :verfügbar
      end
    end    

end
