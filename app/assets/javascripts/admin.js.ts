/// <reference path="typings/tsd.d.ts" />

interface Author {
    name: string;
    email: string;
    twitter: string;
    description: string;
    about: string;
}

class AdminSettings {
    font: string;
    author: Author;

    constructor() {
        this.getAdminSettings((settings: any) => {
            console.log(settings);
            this.font = settings.admin.font;
            this.author = settings.author;
        });
    }

    setColour(id: String, value: String) {
        $(`#${id}`).css({ 'color': value });
    }

    private getAdminSettings(callback: any): any {
        return $.get("admin_settings/", (response) => callback(response));
    }
}

$(() => {
    var admin = new AdminSettings();

    $('input[type="text"]').keypress((event: Event) => {
        let targetId: string = $(event.target)[0].id.substring(0, 2);
        let targetVal: string = $(event.target).val();
        admin.setColour(targetId, targetVal);
    });
});

