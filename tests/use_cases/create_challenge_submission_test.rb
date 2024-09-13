# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../src/application/use_cases/create_challenge_submission'
require_relative '../repositories/in_memory_students_repository'
require_relative '../repositories/in_memory_challenges_repository'
require_relative '../../src/domain/entities/student'
require_relative '../../src/domain/entities/challenge'

class CreateChallengeSubmissionTest < Minitest::Test
  def setup
    @students_repository = InMemoryStudentsRepository.new
    @challenge_repository = InMemoryChallengesRepository.new
    @sut = Application::UseCases::CreateChallengeSubmission.new(@students_repository, @challenge_repository)
  end

  def test_create_new_challenge_submission
    student = Domain::Entities::Student.create(
      name: 'John Doe',
      email: 'johndoe@example.com'
    )

    challenge = Domain::Entities::Challenge.create(
      title: 'ChallenJohnge 01',
      instruction_url: 'http://example.com'
    )

    @students_repository.items.push(student)
    @challenge_repository.items.push(challenge)

    response = @sut.execute(
      student_id: student.id,
      challenge_id: challenge.id
    )

    assert_instance_of Domain::Entities::Submission, response
    assert_equal student.id, response.props[:student_id]
    assert_equal challenge.id, response.props[:challenge_id]
    refute_nil response.id
  end
end