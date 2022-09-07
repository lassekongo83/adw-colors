<div align="center">
    <h1>Adw Colors</h1>
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

Tip: Use different color themes for different Flatpak apps. Add a different gtk.css file to `/home/user/.var/app/[name of flatpak app]/config/gtk-4.0/` (or gtk-3.0).

<br><br>

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
            <td><a href="./themes/nord/gtk.css">Nord</a></td>
            <td><img src="./themes/nord/nord.png?raw=true" alt="Nord"></td>
            <td><a href="" title="github"></a></td>
        </tr>
        <tr>
            <td><a href="./themes/Peninsula-dark/gtk.css">Peninsula-dark</a></td>
            <td><img src="./themes/Peninsula-dark/peninsula-dark.png?raw=true" alt="Peninsula-dark"></td>
            <td><a href="" title="github"></a></td>
        </tr>
        <tr>
            <td><a href="./themes/gruvbox-dark/gtk.css">Gruvbox-dark</a></td>
            <td><img src="./themes/gruvbox-dark/gruvbox-dark.png?raw=true" alt="Gruvbox-dark"></td>
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
            <td><a href="./themes/solarized/gtk.css">Solarized</a></td>
            <td><img src="./themes/solarized/solarized.png?raw=true" alt="Solarized"></td>
            <td><a href="https://github.com/davidphilipbarr" title="github">davidphilipbarr</a></td>
        </tr>
        <tr>
            <td><a href="./themes/solarized-dark/gtk.css">Solarized-dark</a></td>
            <td><img src="./themes/solarized-dark/solarized-dark.png?raw=true" alt="Solarized-dark"></td>
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
        <tr>
            <td><a href="./themes/yaru/gtk.css">yaru</a></td>
            <td><p>Yaru accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-dark/gtk.css">yaru-dark</a></td>
            <td><p>Yaru-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-bark/gtk.css">yaru-bark</a></td>
            <td><p>Yaru-bark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-bark-dark/gtk.css">yaru-bark-dark</a></td>
            <td><p>Yaru-bark-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-blue/gtk.css">yaru-blue</a></td>
            <td><p>Yaru-blue accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-blue-dark/gtk.css">yaru-blue-dark</a></td>
            <td><p>Yaru-blue-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-magenta/gtk.css">yaru-magenta</a></td>
            <td><p>Yaru-magenta accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-magenta-dark/gtk.css">yaru-magenta-dark</a></td>
            <td><p>Yaru-magenta-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-olive/gtk.css">yaru-olive</a></td>
            <td><p>Yaru-olive accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-olive-dark/gtk.css">yaru-olive-dark</a></td>
            <td><p>Yaru-olive-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-prussiangreen/gtk.css">yaru-prussiangreen</a></td>
            <td><p>Yaru-prussiangreen accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-prussiangreen-dark/gtk.css">yaru-prussiangreen-dark</a></td>
            <td><p>Yaru-prussiangreen-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-purple/gtk.css">yaru-purple</a></td>
            <td><p>Yaru-purple accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-purple-dark/gtk.css">yaru-purple-dark</a></td>
            <td><p>Yaru-purple-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-red/gtk.css">yaru-red</a></td>
            <td><p>Yaru-red accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-red-dark/gtk.css">yaru-red-dark</a></td>
            <td><p>Yaru-red-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-sage/gtk.css">yaru-sage</a></td>
            <td><p>Yaru-sage accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-sage-dark/gtk.css">yaru-sage-dark</a></td>
            <td><p>Yaru-sage-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-viridian/gtk.css">yaru-viridian</a></td>
            <td><p>Yaru-viridian accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr>
            <td><a href="./themes/yaru-sage-dark/gtk.css">yaru-viridian-dark</a></td>
            <td><p>Yaru-viridian-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
    </table>
</div>
