// props:
//   name (string) - name of radio elements in form
//   list (array of objects) - list of items to select. Item is { value: string, image: url-string, label: string }

class OnboardingRadioCards extends React.Component {

  render () {
    return (
      <ul className={`radio-cards ${this.props.list.length <= 4 ? "radio-cards--one-line" : ""}`}>
        {this.props.list.map(item => {
          return (
            <li className="radio-cards__item" key={`card_${item.name}`}>
              <input required className="radio-cards__input" type="radio" id={`card_${item.name}`} name={this.props.name} value={item.name} />
              <label className="radio-cards__label" htmlFor={`card_${item.name}`}>
                <img className="radio-cards__image" src={item.image} />
                {item.name}
              </label>
            </li>
          );
        })}
      </ul>
    );
  }
}
