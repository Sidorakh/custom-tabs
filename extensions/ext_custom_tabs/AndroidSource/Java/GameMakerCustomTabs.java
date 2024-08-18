

package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;
import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;

import androidx.browser.customtabs.CustomTabsIntent;

import android.os.Build;
import android.content.Context;
import android.net.Uri;


public class GameMakerCustomTabs {
    public int OpenCustomTab(String url, double optionsPtr) {
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
        int list = (int) optionsPtr;
        if (list != -1) {   // don't check a non-existant empty list
            
            // show title
            if (RunnerJNILib.dsListGetValueDouble(list,2) != -1) {
                double value = RunnerJNILib.dsListGetValueDouble(list,0);
                builder.setShowTitle(value == 1 ? true : false);
            }
            // url bar hiding
            if (RunnerJNILib.dsListGetValueDouble(list,3) != -1) {
                double value = RunnerJNILib.dsListGetValueDouble(list,1);
                builder.setUrlBarHidingEnabled(value == 1 ? true : false);
            }
            //  share state
            if (RunnerJNILib.dsListGetValueDouble(list,4) != -1) {
                double value = RunnerJNILib.dsListGetValueDouble(list,2);
                builder.setShareState((value == 1) ? CustomTabsIntent.SHARE_STATE_ON : CustomTabsIntent.SHARE_STATE_OFF);
            }
        }
        CustomTabsIntent intent = builder.build();
        intent.launchUrl(RunnerActivity.CurrentActivity, Uri.parse(url));
        return 1;
    }
}