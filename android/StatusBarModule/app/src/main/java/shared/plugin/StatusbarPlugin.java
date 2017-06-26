package shared.plugin;

import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;

import com.t5online.nebulacore.Nebula;
import com.t5online.nebulacore.plugin.Plugin;

import shared.service.StatusBarService;

/**
 * Created by sungju on 2017. 6. 7..
 */

public class StatusbarPlugin extends Plugin {

    public void setStatusBar(boolean isHidden, String backgroundColor, boolean isDefault){

        StatusBarService statusBarService = (StatusBarService) Nebula.getService(StatusBarService.SERVICE_KEY_STATUSBAR);

        statusBarService.hiddenStatusbar(isHidden);
        statusBarService.setStatusBarColor(Color.parseColor(backgroundColor));
        if(isDefault){
            statusBarService.setStatusBarColor(com.t5online.nebulacore.R.color.colorPrimary);
        }
        resolve();
    }
}
