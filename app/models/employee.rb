class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  before_save :calculate_score

  def name
    first_name + " " + last_name
  end

  private

    def calculate_score
      total = 4
      total += weight_points
      total += hdl_points
      total += ldl_points
      total += glucose_points
      total += diastolic_points
      total += systolic_points
      self.score = total
    end

    def weight_points
      case self.weight
      when 90..150
        return 16
      when 151..200
        return 11
      when 201..250
        return 6
      when 251..320
        return 0
      else
        return 0
      end
    end

    def hdl_points
      case self.hdl
      when 20..40
        return 0
      when 41..60
        return 8
      when 61..80
        return 16
      else
        return 0
      end
    end

    def ldl_points
      case self.ldl
      when 80..130
        return 16
      when 131..160
        return 8
      when 161..200
        return 0
      else
        return 0
      end
    end

    def glucose_points
      case self.glucose
      when 50..120
        return 16
      when 121..200
        return 8
      when 201..350
        return 0
      else
        return 0
      end
    end

    def diastolic_points
      case self.diastolic
      when 60..80
        return 16
      when 81..100
        return 8
      when 101..120
        return 0
      else
        return 0
      end
    end

    def systolic_points
      case self.systolic
      when 100..120
        return 16
      when 121..160
        return 8
      when 161..200
        return 0
      else
        return 0
      end
    end

end
