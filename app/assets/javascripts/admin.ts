/// <reference path="typings/tsd.d.ts" />

/// <reference path="settings/author.ts" />
/// <reference path="settings/heading.ts" />

/**
 * TypeScript object representation of custom blog settings
 */
module Settings {
    export class Admin {
        font: string
        author: Settings.Author

        // Fetch user settings from blog API
        constructor() {
            this.getAdminSettings((settings: any) => {
                console.log(settings)
                this.font = settings.admin.font
                this.author = settings.author
            });
        }

        // Updates the internal object font-size for a given heading
        updateFontSize(event: Event) {
            let [targetId, targetVal] = this.matchHeadingContent(event)
            this.setFontSize(targetId, Number(targetVal))
        }

        // Updates the internal object setting colour for a given heading
        updateHeadingColour(event: Event) {
            let [targetId, targetVal] = this.matchHeadingContent(event)
            this.setColour(targetId, targetVal)
        }

        // Updates the displayed heading font-size
        private setFontSize(id: string, size: number) {
            $(`#${id}`).css({ 'font-size': size })
        }

        // Updates the displayed heading colour
        private setColour(id: string, value: string) {
            $(`#${id}`).css({ 'color': value })
        }

        // Callback method which returns JSON object for user settings
        private getAdminSettings(callback: any): any {
            return $.get("admin_settings/", (response) => callback(response))
        }

        // Returns tuple containing id of heading, and value to be updated to
        private matchHeadingContent(event: Event) {
            return [
                $(event.target)[0].id.match(/(h[0-9])/)[0].toString(),
                $(event.target).val()
            ]
        }
    }
}

$(() => {
    // Instantiate admin settings object
    var admin = new Settings.Admin()

    // Event fired when font-size input is changed for a heading
    $('input[type="number"]').keypress((event: Event) => admin.updateFontSize(event))

    // Event fired when colour input is changed for a heading
    $('input[type="text"]').keypress((event: Event) => admin.updateHeadingColour(event))
});
