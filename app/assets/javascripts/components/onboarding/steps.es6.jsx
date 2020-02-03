class OnboardingSteps extends React.Component {

  stepsMapping() {
    return {
      "language": OnboardingLanguages,
      "reasons": OnboardingReasons,
      "skill": OnboardingSkillLevel,
      "books": OnboardingBooks,
      "needs": OnboardingNeeds,
      "plan": OnboardingPlans,
      "exam_date": OnboardingExamDate
    }
  }
  
  render () {
    if (this.props.step == null) {
      return <React.Fragment></React.Fragment>
    }
    let CurrentStepComponent = this.stepsMapping()[this.props.step.name];
    return (
      <form onSubmit={this.props.handleSubmit}>
        <CurrentStepComponent data={this.props.step}/>
        {!this.props.isFirst &&
          <Button label={I18n.t("general.back")}/>
        }
        {!this.props.isLast &&
          <Button primary submit label={I18n.t("general.next")}/>
        }
      </form>
    );
  }
}


