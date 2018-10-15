class Post extends React.Component {
  render() {
    return <h1 class="text-center">{this.props.title.charAt(0).toUpperCase() + this.props.title.slice(1)}</h1>
  }
}