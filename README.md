<div align="center">
    <h1>adw-colors</h1>
    <p> Style 
        <a href="https://gnome.pages.gitlab.gnome.org/libadwaita/">libadwaita</a> and 
        <a href="https://github.com/lassekongo83/adw-gtk3">adw-gtk3</a> 
        with named colors.
    </p>
    <a href="./HOWTO.md">How to create your own color themes.</a><br><br><br>
    <ol align="left">
        <li>Copy one of the files below to <code>~/.config/gtk-4.0/gtk.css</code> (Make backups if the file already exists).</li>
        <li>Enable the corresponding color preference in <code>gnome-tweaks</code> and <code>gnome-control-center</code>. [e.g Dark for dark color themes.]</li>
        <li>Create a symbolic link to the gtk-3.0 folder: <code>ln -s ~/.config/gtk-4.0/gtk.css ~/.config/gtk-3.0/gtk.css</code></li>
        <li>If you use flatpak apps, run:</li><br>
        <pre><code>sudo flatpak override --filesystem=xdg-config/gtk-3.0 && sudo flatpak override --filesystem=xdg-config/gtk-4.0</code></pre>
        <li>Restart any open applications or log out and in again.</li>
    </ol>
</div>

<br><br><br><br>

<div align="center">
    <h1>Available themes</h1><br>
    <table>
        <tr>
            <th>Color theme</th>
            <th>Info / Screenshot</th>
            <th>Submitted by</th>
        </tr>
        <tr>
            <td><a href="./themes/dracula/gtk.css">Dracula</a></td>
            <td><img src="./themes/dracula/dracula.png?raw=true" alt="Dracula"></td>
            <td><a href="" title="github"></a></td>
        </tr>
        <tr>
            <td><a href="./themes/Nord/gtk.css">Nord</a></td>
            <td><img src="./themes/Nord/Nord.png?raw=true" alt="Nord"></td>
            <td><a href="" title="github"></a></td>
        </tr>
        <tr>
            <td><a href="./themes/Peninsula-dark/gtk.css">Peninsula-dark</a></td>
            <td><img src="./themes/Peninsula-dark/Peninsula-dark.png?raw=true" alt="Peninsula-dark"></td>
            <td><a href="" title="github"></a></td>
        </tr>
        <tr>
            <td><a href="./themes/Gruvbox-dark/gtk.css">Gruvbox-dark</a></td>
            <td><img src="./themes/Gruvbox-dark/Gruvbox-dark.png?raw=true" alt="Gruvbox-dark"></td>
            <td><a href="https://github.com/WryOpussum" title="github">WryOpussum</a></td>
        </tr>
        <tr>
            <td><a href="./themes/alpha-black/gtk.css">Alpha-black</a></td>
            <td><img src="./themes/alpha-black/preview.png?raw=true" alt="Alpha-black"></td>
            <td><a href="https://github.com/mobinjavari" title="github">MobinJavari</a></td>
        </tr>
        <tr>
            <td><a href="./themes/alpha-dark/gtk.css">Alpha-dark</a></td>
            <td><img src="./themes/alpha-dark/preview.png?raw=true" alt="Alpha-dark"></td>
            <td><a href="https://github.com/mobinjavari" title="github">MobinJavari</a></td>
        </tr>
        <tr>
            <td><a href="./themes/alpha-mac/gtk.css">Alpha-mac</a></td>
            <td><img src="./themes/alpha-mac/preview.png?raw=true" alt="Alpha-mac"></td>
            <td><a href="https://github.com/mobinjavari" title="github">MobinJavari</a></td>
        </tr>
        <tr>
            <td><a href="./themes/Solarized/gtk.css">Solarized</a></td>
            <td><img src="./themes/Solarized/Solarized.png?raw=true" alt="Solarized"></td>
            <td><a href="https://github.com/davidphilipbarr" title="github">davidphilipbarr</a></td>
        </tr>
        <tr>
            <td><a href="./themes/Solarized-dark/gtk.css">Solarized-dark</a></td>
            <td><img src="./themes/Solarized-dark/Solarized-dark.png?raw=true" alt="Solarized-dark"></td>
            <td><a href="https://github.com/davidphilipbarr" title="github">davidphilipbarr</a></td>
        </tr>
        <tr>
            <td><a href="./themes/adw-hc-dark/gtk.css">adw-hc-dark</a></td>
            <td><p>A slightly higher contrast libadwaita dark theme. <a href="./themes/adw-hc-dark/screenshot.png?raw=true">Screenshot</a>.</p></td>
            <td><a href="" title="github"></a></td>
        </tr>
        <tr>
            <td><a href="./themes/adw-hc-light/gtk.css">adw-hc-light</a></td>
            <td><p>A slightly higher contrast libadwaita dark theme. <a href="./themes/adw-hc-light/screenshot.png?raw=true">Screenshot</a>.</p></td>
            <td><a href="" title="github"></a></td>
        </tr>
    </table>
</div>