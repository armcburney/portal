/**
 * JavaScript object representation of custom blog settings
 */
class Settings {
  // Fetch user settings from blog API
  constructor() {
    this.getAdminSettings((settings) => {
      this.font = settings.admin.font;
      this.author = settings.author;
    });
  }

  // Updates the internal object font-size for a given heading
  updateFontSize(event) {
    let [targetId, targetVal] = this.matchHeadingContent(event);
    this.setFontSize(targetId, Number(targetVal));
  }

  // Updates the internal object setting colour for a given heading
  updateHeadingColour(event) {
    let [targetId, targetVal] = this.matchHeadingContent(event);
    this.setColour(targetId, targetVal);
  }

  // Updates the displayed heading font-size
  setFontSize(id, size) {
    $(`#${id}`).css({ 'font-size': size });
  }

  // Updates the displayed heading colour
  setColour(id, value) {
    $(`#${id}`).css({ 'color': value });
  }

  // Callback method which returns JSON object for user settings
  getAdminSettings(callback) {
    return $.get("admin_settings/", (response) => callback(response));
  }

  // Returns tuple containing id of heading, and value to be updated to
  matchHeadingContent(event) {
    return [
      $(event.target)[0].id.match(/(h[0-9])/)[0].toString(),
      $(event.target).val()
    ];
  }
};

$(() => {
  // Instantiate admin settings object
  let settings = new Settings();

  // Event fired when font-size input is changed for a heading
  $('input[type="number"]').keypress((event) => settings.updateFontSize(event));

  // Event fired when colour input is changed for a heading
  $('input[type="text"]').keypress((event) => settings.updateHeadingColour(event));
});
