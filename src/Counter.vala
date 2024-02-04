/*
* SPDX-License-Identifier: GPL-3.0-or-later
* SPDX-FileCopyrightText: 2024 Justin Lopato <justin@lopato.org>
*/

class Counter : GLib.Object {

    public int value { get; private set; }

    public void increment () {
        value += 1;
    }

    public void decrement () {
        value -= 1;
    }
}
