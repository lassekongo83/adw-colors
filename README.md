<div align="center">
    <h1>adw-colors</h1>
    <p> Style 
        <a href="https://gnome.pages.gitlab.gnome.org/libadwaita/">libadwaita</a> and 
        <a href="https://github.com/lassekongo83/adw-gtk3">adw-gtk3</a> 
        with named colors.
    </p>
    <a href="./HOWTO.md">How to create your own color themes.</a><br><br><br>
</div>

<div align="left">
    <details open>
        <summary><h2>How To Install</h2></summary><br>
    <ol align="left">
        <li>Copy the gtk4 & gtk3 file below to <code>~/.config/gtk-4.0/gtk.css</code> & <code>~/.config/gtk-3.0/gtk.css</code> (Make backups if the files already exists) .</li>
        <li>Enable the corresponding color preference in <code>gnome-tweaks</code> (adw-gtk3 or adw-gtk3-dark) and <code>gnome-control-center</code>, [e.g Dark for dark color themes]</li>
        <li>If you use flatpak apps, run:</li><br>
        <pre><code>sudo flatpak override --filesystem=xdg-config/gtk-3.0 && sudo flatpak override --filesystem=xdg-config/gtk-4.0</code></pre>
        <li>Restart any open applications or log out and in again.</li>
        <br><p><sub>! Tip: Use different color themes for different Flatpak apps. Add a different gtk.css file to `/home/user/.var/app/[name of flatpak app]/config/gtk-4.0/` (or gtk-3.0).</sub></p><br><br>
    </ol>
    </details>
</div>

<div align="left">
    <details open>
        <summary><h2>Accent color change</h2></summary><br>
        <p>Accent-color-change is a small cli program that allows you to change your accent color globally on GNOME 47+. It will use the included gnome accent colors and also set them to gtk3 and non-libadwaita gtk4 applications.</p>
        <p>For more details: https://github.com/lassekongo83/adw-colors/tree/main/accent-color-change</p>
    </details>
</div>

<div align="center">
    <details>
        <summary align="left"><h2>Available themes</h2></summary><br>
    <table>
        <tr align="center">
            <th>Color theme</th>
            <th>Info / Screenshot</th>
            <th>Submitted by</th>
        </tr>
        <tr><td colspan="3"></td></tr>
        <tr><td colspan="3"></td></tr>
        <tr align="center">
            <td><a href="./themes/dracula/gtk.css">dracula</a></td>
            <td><img src="./themes/dracula/dracula.png?raw=true" alt="dracula"></td>
            <td><a href="https://github.com/lassekongo83" title="github">lassekongo83</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/nord/gtk.css">nord</a></td>
            <td><img src="./themes/nord/nord.png?raw=true" alt="nord"></td>
            <td><a href="https://github.com/lassekongo83" title="github">lassekongo83</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/Peninsula-dark/gtk.css">peninsula-dark</a></td>
            <td><img src="./themes/Peninsula-dark/peninsula-dark.png?raw=true" alt="peninsula-dark"></td>
            <td><a href="https://github.com/lassekongo83" title="github">lassekongo83</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/gruvbox-dark/gtk.css">gruvbox-dark</a></td>
            <td><img src="./themes/gruvbox-dark/gruvbox-dark.png?raw=true" alt="gruvbox-dark"></td>
            <td><a href="https://github.com/WryOpussum" title="github">wryopussum</a></td>
        </tr>
        <tr><td colspan="3"></td></tr>
        <tr><td colspan="3"></td></tr>
        <tr align="center">
            <td><a href="./themes/alpha-tritanopia/gtk.css">alpha-tritanopia</a></td>
            <td><img src="./themes/alpha-tritanopia/preview.png?raw=true" alt="alpha-tritanopia"></td>
            <td><a href="https://github.com/mobinjavari" title="github">mobinjavari</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/alpha-black/gtk.css">alpha-black</a></td>
            <td><img src="./themes/alpha-black/preview.png?raw=true" alt="alpha-black"></td>
            <td><a href="https://github.com/mobinjavari" title="github">mobinjavari</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/alpha-dark/gtk.css">alpha-dark</a></td>
            <td><img src="./themes/alpha-dark/preview.png?raw=true" alt="alpha-dark"></td>
            <td><a href="https://github.com/mobinjavari" title="github">mobinjavari</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/alpha-mac/gtk.css">alpha-mac</a></td>
            <td><img src="./themes/alpha-mac/preview.png?raw=true" alt="alpha-mac"></td>
            <td><a href="https://github.com/mobinjavari" title="github">mobinjavari</a></td>
        </tr>
        <tr><td colspan="3"></td></tr>
        <tr><td colspan="3"></td></tr>
        <tr align="center">
            <td><a href="./themes/solarized/gtk.css">solarized</a></td>
            <td><img src="./themes/solarized/solarized.png?raw=true" alt="solarized"></td>
            <td><a href="https://github.com/davidphilipbarr" title="github">davidphilipbarr</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/solarized-dark/gtk.css">solarized-dark</a></td>
            <td><img src="./themes/solarized-dark/solarized-dark.png?raw=true" alt="solarized-dark"></td>
            <td><a href="https://github.com/davidphilipbarr" title="github">davidphilipbarr</a></td>
        </tr>
        <tr><td colspan="3"></td></tr>
        <tr><td colspan="3"></td></tr>
        <tr align="center">
            <td><a href="./themes/adw-hc-dark/gtk.css">adw-hc-dark</a></td>
            <td><p>A slightly higher contrast libadwaita dark theme. <a href="./themes/adw-hc-dark/screenshot.png?raw=true">Screenshot</a>.</p></td>
            <td><a href="https://github.com/lassekongo83" title="github">lassekongo83</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/adw-hc-light/gtk.css">adw-hc-light</a></td>
            <td><p>A slightly higher contrast libadwaita light theme. <a href="./themes/adw-hc-light/screenshot.png?raw=true">Screenshot</a>.</p></td>
            <td><a href="https://github.com/lassekongo83" title="github">lassekongo83</a></td>
        </tr>
        <tr><td colspan="3"></td></tr>
        <tr><td colspan="3"></td></tr>
        <tr align="center">
            <td><a href="./themes/yaru/gtk.css">yaru</a></td>
            <td><p>Yaru accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-dark/gtk.css">yaru-dark</a></td>
            <td><p>Yaru-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center" align="center"> 
            <td><a href="./themes/yaru-bark/gtk.css">yaru-bark</a></td>
            <td><p>Yaru-bark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-bark-dark/gtk.css">yaru-bark-dark</a></td>
            <td><p>Yaru-bark-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-blue/gtk.css">yaru-blue</a></td>
            <td><p>Yaru-blue accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-blue-dark/gtk.css">yaru-blue-dark</a></td>
            <td><p>Yaru-blue-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-magenta/gtk.css">yaru-magenta</a></td>
            <td><p>Yaru-magenta accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-magenta-dark/gtk.css">yaru-magenta-dark</a></td>
            <td><p>Yaru-magenta-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-olive/gtk.css">yaru-olive</a></td>
            <td><p>Yaru-olive accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-olive-dark/gtk.css">yaru-olive-dark</a></td>
            <td><p>Yaru-olive-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-prussiangreen/gtk.css">yaru-prussiangreen</a></td>
            <td><p>Yaru-prussiangreen accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-prussiangreen-dark/gtk.css">yaru-prussiangreen-dark</a></td>
            <td><p>Yaru-prussiangreen-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-purple/gtk.css">yaru-purple</a></td>
            <td><p>Yaru-purple accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-purple-dark/gtk.css">yaru-purple-dark</a></td>
            <td><p>Yaru-purple-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-red/gtk.css">yaru-red</a></td>
            <td><p>Yaru-red accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-red-dark/gtk.css">yaru-red-dark</a></td>
            <td><p>Yaru-red-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-sage/gtk.css">yaru-sage</a></td>
            <td><p>Yaru-sage accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-sage-dark/gtk.css">yaru-sage-dark</a></td>
            <td><p>Yaru-sage-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-viridian/gtk.css">yaru-viridian</a></td>
            <td><p>Yaru-viridian accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr align="center">
            <td><a href="./themes/yaru-sage-dark/gtk.css">yaru-viridian-dark</a></td>
            <td><p>Yaru-viridian-dark accent-color theme.</p></td>
            <td><a href="https://github.com/yellowgh0st" title="github">yellowgh0st</a></td>
        </tr>
        <tr><td colspan="3"></td></tr>
        <tr><td colspan="3"></td></tr>
    </table>
    </details>
</div>
