// getLevelObject Examples: 
// 1) ['B1'] -> {
//   main: true,
//   level: 'B1',
//   short: ['Intermediate']
//   long: ['Practical language: work, school, travel']
// }
// 2) ['B1', 'B2'] -> {
//   main: false,
//   level: 'B1-B2',
//   short: ['Intermediate', 'Upper-Intermediate']
//   long: ['Practical language: work, school, travel', 'Conversational language: in-depth discussion, opinions, spontaneity']
// }

const getLevelObject = levels => ({
  main: levels.length === 1,
  level: levels.join('-'),
  short: levels.map(level => I18n.t(`onboarding.skill.${level.toLocaleLowerCase()}_short`)),
  long: levels.map(level => I18n.t(`onboarding.skill.${level.toLocaleLowerCase()}_long`))
})

const getLevelObjects = levels => {
  const knowledgeLevelsObjects = [];
  levels.forEach((level, index) => {
    if (index !== 0) {
      knowledgeLevelsObjects.push(getLevelObject([KNOWLEDGE_LEVELS[index - 1], level]));
    }
    knowledgeLevelsObjects.push(getLevelObject([level]));
  });
  return knowledgeLevelsObjects;
}

const KNOWLEDGE_LEVELS = ["A1", "A2", "B1", "B2", "C1", "C2"];
const KNOWLEDGE_LEVELS_OBJECTS = getLevelObjects(KNOWLEDGE_LEVELS);

class OnboardingSkillLevel extends React.Component {
  render () {
    return (
      <ul className="skill-level">
        {KNOWLEDGE_LEVELS_OBJECTS.map(item => (
          <li className="skill-level__item" key={item.level}>
            <input type="radio" name={this.props.data.name} value={item.level} id={`${this.props.data.name}_${item.level}`}/>
            <label className="skill-level__item-label" htmlFor={`${this.props.data.name}_${item.level}`}>
              {item.main &&
                <span  className="skill-level__item-text">{item.level}</span>
              }
            </label>
            {/* <div>{item.level}</div>
            <div>{item.short}</div>
            <div>{item.long}</div> */}
          </li>
        ))}
      </ul>
    );
  }
}
  