class StudentDatatable < AjaxDatatablesRails::Base
 
  include AjaxDatatablesRails::Extensions::WillPaginate
    def_delegator :@view, :link_to


  def sortable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
    @sortable_columns ||= [
      'students.first_name',
      'students.last_name',
      'students.group'
    ]
  end

  def searchable_columns
    # list columns inside the Array in string dot notation.
    # Example: 'users.email'
    @searchable_columns ||= [
      'students.first_name',
      'students.last_name',
      'students.group'
    ]
  end

  private
  def data
    records.map do |record|
      [
        link_to(record.first_name, @view.student_path(:id => record)),
        link_to(record.last_name, @view.student_path(:id => record)),
        link_to(record.group, @view.group_path(:id => record.group))
        

        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
      ]
    end
  end

  def get_raw_records
    Student.all
    # insert query here
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
