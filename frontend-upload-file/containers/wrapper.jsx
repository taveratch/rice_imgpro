let files;
export default class Wrapper extends React.Component {

  onChange(event) {
    files = event.target.files;
    console.log(files);
  }
  onSubmit(event) {
    event.preventDefault();
    var data = new FormData($('#upload-form')[0]);
    console.log(data);
    $.ajax({
        url: 'http://127.0.0.1:5000/upload',
        type: 'POST',
        data: data,
        cache: false,
        dataType: 'json',
        processData: false, // Don't process the files
        contentType: false, // Set content type to false as jQuery will tell the server its a query string request
        done: function(data, textStatus, jqXHR)
        {
          console.log('Success');
          console.log(data);
        },
        error: function(err)
        {
            // Handle errors here
            console.log('ERRORS: ');
            console.log(err);
            // STOP LOADING SPINNER
        }
    });
  }
  render () {
    return (
      <div>
        <form id="upload-form" onSubmit={this.onSubmit.bind(this)}>
          <input name="file" type="file" onChange={this.onChange.bind(this)} id="file-select"/>
          <input type="submit" />
        </form>
      </div>
    );
  }
}
ReactDOM.render(<Wrapper />, document.getElementById('app'));
