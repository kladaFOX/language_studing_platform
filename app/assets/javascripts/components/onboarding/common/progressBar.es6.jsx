class OnboardingProgressBar extends React.Component {
  render () {
    return (
      <ul className="progress-bar">
        {this.props.steps.map((step, index) => {
          isPassed = index <= this.props.current;
          return (
            <li
              key={step.name}
              className={`progress-bar__item ${isPassed ? "progress-bar__item--passed" : ""}`}>
              {I18n.t(`onboarding.steps.${step.name}`)}
            </li>
          )
        })}
      </ul>
    );
  }
}
