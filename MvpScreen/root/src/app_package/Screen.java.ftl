package ${packageName};

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.${rootTag};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

import butterknife.ButterKnife;

public class ${className}Screen extends ${rootTag} implements ${className}View {

	private ${className}Presenter presenter;

    public ${className}Screen(Context context) {this(context, null);}
    public ${className}Screen(Context context, AttributeSet attrs) {this(context, attrs, 0);}
    public ${className}Screen(Context context, AttributeSet attrs, int defStyleAttr) {

        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {

        initLayout();
        initPresenter();
    }

    private void initLayout() {

        LayoutInflater inflater = LayoutInflater.from(getContext());
        View view = inflater.inflate(R.layout.${layoutName}, this, true);

        if (isInEditMode()) return;
        ButterKnife.bind(this, view);
    }

    private void initPresenter() {

        presenter = new ${className}Presenter();
        presenter.bindView(this);
        presenter.init();
    }

    @Override
    protected void onDetachedFromWindow() {
        
        presenter.unbindView(this);
        super.onDetachedFromWindow();
    }

}