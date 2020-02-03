class OnboardingBooks extends React.Component {
  constructor() {
    super();
    this.state = {
      otherBookSelected: false
    };

    this.handleOtherCheckboxChange = this.handleOtherCheckboxChange.bind(this);
  }

  handleOtherCheckboxChange(e) {
    const checked = e.target.checked;
    this.setState(prevState => ({ ...prevState, otherBookSelected: checked }));
  }

  render () {
    const booksProposed = this.props.data.items != null && this.props.data.items.length > 0;
    return (
      <div className="onboarding-books">
        {booksProposed &&
          <ul className="select-list">
            {this.props.data.items.map(item => {
              return (
                <li className="select-list__item" key={`card_${item.value}`}>
                  <input
                    className="select-list__input"
                    type="checkbox"
                    id={`${this.props.data.name}_${item.value}`}
                    name={`${this.props.data.name}[]`}
                    value={item.value}
                  />
                  <label className="select-list__label" htmlFor={`${this.props.data.name}_${item.value}`}>
                    {item.label}
                  </label>
                </li>
              );
            })}
            <li className="select-list__item">
              <input
                required
                onChange={this.handleOtherCheckboxChange}
                className="select-list__input"
                type="checkbox"
                id={`${this.props.data.name}_other`}
              />
              <label className="select-list__label" htmlFor={`${this.props.data.name}_other`}>
                {I18n.t("onboarding.books.other")}
              </label>
            </li>
          </ul>
        }
        {(!booksProposed || this.state.otherBookSelected) &&
          <div className="input-group">
            <input name={`${this.props.data.name}[]`} id="other_books" type="text" className="text-input input-group__text-input"/>
            <label htmlFor="other_books" className="label input-group__label">{I18n.t("onboarding.books.other_label")}</label>
          </div>
        }
      </div>
    );
  }
}
  