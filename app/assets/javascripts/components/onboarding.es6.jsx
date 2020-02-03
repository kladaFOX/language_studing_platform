const INITIAL_ENDPOINT = "";
const DUMMY_LANGUAGES = [
  {
    value: "fr",
    image: "https://app.rootalky.com/assets/images/Language-1-French.png",
    label: "French"
  },
  {
    value: "en",
    image: "https://app.rootalky.com/assets/images/Language-1-Arabic.png",
    label: "English"
  }
]

const DUMMY_REASONS = [
  {
    value: "exam",
    image: "https://app.rootalky.com/assets/images/Language-1-French.png",
    label: "Exam"
  },
  {
    value: "emigration",
    image: "https://app.rootalky.com/assets/images/Language-1-Arabic.png",
    label: "Emigration"
  },
  {
    value: "business",
    image: "https://app.rootalky.com/assets/images/Language-1-French.png",
    label: "Business"
  },
  {
    value: "personal",
    image: "https://app.rootalky.com/assets/images/Language-1-Arabic.png",
    label: "Personal"
  }
]

DUMMY_BOOKS = [
  {
    value: "redelf",
    label: "Réussir le DELF / DALF"
  },
  {
    value: "abcdelf",
    label: "ABC DELF / DALF"
  },
  {
    value: "ineed",
    label: "I need a book"
  }
]

const DUMMY_STEPS = [
  {
    name: "language",
    items: DUMMY_LANGUAGES
  },
  {
    name: "reason",
    items: DUMMY_REASONS
  },
  {
    name: "skill"
  },
  {
    name: "books",
    items: DUMMY_BOOKS
  },
  {
    name: "needs"
  }
]

class Onboarding extends React.Component {

  constructor () {
    super();

    this.state = {
      steps: [],
      stepsMemo: {},
      currentStepNumber: 0,
      currentStep: null
    }

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const formData = new FormData(e.target);

    fetch(this.state.steps[this.state.currentStepNumber].url, {
      method: 'PATCH',
      body: formData
    })
      .then(data => data.json())
      .then(() => fetch(this.state.steps[this.state.currentStepNumber + 1].url))
      .then(data => data.json())
      .then(data => {
        this.setState(prevState => ({
          ...prevState,
          stepsMemo: {
            ...prevState.stepsMemo,
            [data.current.name]: data.current
          },
          steps: data.steps,
          currentStepNumber: prevState.currentStepNumber + 1,
          currentStep: data.current
        }));
      })
  }

  componentDidMount() {
    fetch(this.props.initialLink)
      .then(data => data.json())
      .then(data => {
        console.log(data);
        this.setState({
          steps: data.steps,
          stepsMemo: {
            [data.current.name]: data.current
          },
          currentStep: data.current
        });
      })
  }

  render () {
    return (
      <React.Fragment>
        <OnboardingProgressBar steps={this.state.steps} current={this.state.currentStepNumber} />
        <OnboardingSteps
          step={this.state.currentStep}
          handleSubmit={this.handleSubmit}
          isFirst={this.state.currentStepNumber === 0 }
          isLast={this.state.steps.length - 1 === this.state.currentStepNumber}
        />
      </React.Fragment>
    );
  }
}
