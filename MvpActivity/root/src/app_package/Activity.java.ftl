package ${packageName};

import android.os.Bundle;

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.ui.activities.TNBaseActivity;
</#if>

import butterknife.ButterKnife;

public class ${className}Activity extends TNBaseActivity implements ${className}View {

	private ${className}Presenter presenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        ButterKnife.bind(this);

        initPresenter();
    }

    private void initPresenter() {

        presenter = new ${className}Presenter();
        presenter.bindView(this);
        presenter.init();
    }

    @Override
    protected void onDestroy() {

        presenter.unbindView(this);
        super.onDestroy();
    }
}