require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutArrayAssignment < Neo::Koan
  def test_non_parallel_assignment
    names = ["John", "Smith"]
    first_name = names.first
  end

  def test_parallel_assignments
    first_name, last_name = ["John", "Smith"]
    first_name =  "John"
    last_name = "Smith"
  end

  def test_parallel_assignments_with_extra_values
    first_name, last_name = ["John", "Smith", "III"]
    first_name = "John"
    last_name = "Smith"
  end

  def test_parallel_assignments_with_splat_operator
    first_name, *last_name = ["John", "Smith", "III"]
    first_name = "John"
    last_name = "Smith", "III"
  end

  def test_parallel_assignments_with_too_few_variables
    first_name, last_name = ["Cher"]
    first_name = "Cher"
    last_name = nil
  end

  def test_parallel_assignments_with_subarrays
    first_name, last_name = [["Willie", "Rae"], "Johnson"]
    first_name = ["Willie", "Rae"]
    last_name = "Johnson"
  end

  def test_parallel_assignment_with_one_variable
    first_name, = ["John", "Smith"]
    first_name = ["John", "Smith"]
  end

  def test_swapping_with_parallel_assignment
    first_name = "Roy"
    last_name = "Rob"
    first_name, last_name = last_name, first_name
    first_name = "Rob"
    last_name = "Roy"
  end
end
