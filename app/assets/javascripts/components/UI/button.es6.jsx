const Button = props => (
  <button
    onClick={props.onClick}
    type={props.submit ? "submit" : "button"}
    className={`button ${props.primary ? "button--primary" : "button--secondary"}`}
    disabled={props.disabled}
  >
    {props.label}
  </button>
)
