class OnboardingReasons extends React.Component {
  render () {
    return (
      <OnboardingRadioCards name={this.props.data.name} list={this.props.data.items}/>
    );
  }
}
  