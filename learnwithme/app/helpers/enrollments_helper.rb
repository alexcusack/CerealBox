module EnrollmentsHelper

    def self.add_user_to_course(user, course_id)
      enrollment = UserCourse.new(user_id: user.id, course_id: course_id)
      return enrollment
    end

    def self.remove_user_from_course(user, course_id)
      UserCourse.where(user_id: user.id, course_id: course_id).first.destroy
    end

end
