.class public Lcom/unionpay/upomp/bypay/other/m;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;


# direct methods
.method public constructor <init>(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/u;
    .locals 21

    const-string v1, ""

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->o:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->V:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->p:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->h()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->v:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/other/dh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->V:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->p:Ljava/lang/String;

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    sget-object v6, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;

    sget-object v7, Lcom/unionpay/upomp/bypay/other/eh;->s:Ljava/lang/String;

    sget-object v8, Lcom/unionpay/upomp/bypay/other/eh;->t:Ljava/lang/String;

    sget-object v9, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    sget-object v10, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    sget-object v11, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    sget-object v12, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    sget-object v13, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    sget-object v14, Lcom/unionpay/upomp/bypay/other/eh;->at:Ljava/lang/String;

    sget-object v15, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    sget-object v16, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    sget-object v17, Lcom/unionpay/upomp/bypay/other/eh;->ab:Ljava/lang/String;

    sget-object v18, Lcom/unionpay/upomp/bypay/other/eh;->ac:Ljava/lang/String;

    const-string v19, ""

    const-string v20, ""

    invoke-static/range {v1 .. v20}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    :try_start_1
    const-string v2, "aIFpfWl9aXllg2SIZIhohmiIaHtogmiFaH5peWh6aYJkh2l+aIdogmiIaIdpeWh6aYJpfGh+aHxpfml7aH5kh2h8aIhohmSIaXppg2iDaYJkiGaAaHppfWh+Z4BoemmCZIhofWh+aHpohWSHaHpofGl9aIJoiGiH"

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/unionpay/upomp/bypay/other/af;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v2, Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/unionpay/upomp/bypay/other/fv;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/fv;

    invoke-virtual {v2, v1}, Lcom/unionpay/upomp/bypay/other/fv;->a(Lcom/unionpay/upomp/bypay/other/eu;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/unionpay/upomp/bypay/other/eh;->b:Z

    :goto_2
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/unionpay/upomp/bypay/other/eh;->b:Z

    if-nez v2, :cond_6

    :cond_1
    sget-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v1, :cond_a

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->o:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->V:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->d()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->p:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->i()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->n:[Ljava/lang/String;

    sget v3, Lcom/unionpay/upomp/bypay/other/eh;->m:I

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aL:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->s:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->t:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->R:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->V:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->p:Ljava/lang/String;

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    sget-object v6, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;

    sget-object v7, Lcom/unionpay/upomp/bypay/other/eh;->s:Ljava/lang/String;

    sget-object v8, Lcom/unionpay/upomp/bypay/other/eh;->t:Ljava/lang/String;

    sget-object v9, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    sget-object v10, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    sget-object v11, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    sget-object v12, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    sget-object v13, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    sget-object v14, Lcom/unionpay/upomp/bypay/other/eh;->at:Ljava/lang/String;

    sget-object v15, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    sget-object v16, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    sget-object v17, Lcom/unionpay/upomp/bypay/other/eh;->ab:Ljava/lang/String;

    sget-object v18, Lcom/unionpay/upomp/bypay/other/eh;->ac:Ljava/lang/String;

    const-string v19, ""

    const-string v20, ""

    invoke-static/range {v1 .. v20}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->f()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->V:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->S:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/upomp/bypay/other/eh;->V:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/upomp/bypay/other/eh;->p:Ljava/lang/String;

    sget-object v5, Lcom/unionpay/upomp/bypay/other/eh;->q:Ljava/lang/String;

    sget-object v6, Lcom/unionpay/upomp/bypay/other/eh;->r:Ljava/lang/String;

    sget-object v7, Lcom/unionpay/upomp/bypay/other/eh;->s:Ljava/lang/String;

    sget-object v8, Lcom/unionpay/upomp/bypay/other/eh;->t:Ljava/lang/String;

    sget-object v9, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    sget-object v10, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    sget-object v11, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    sget-object v12, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    sget-object v13, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    sget-object v14, Lcom/unionpay/upomp/bypay/other/eh;->at:Ljava/lang/String;

    sget-object v15, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    sget-object v16, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    sget-object v17, Lcom/unionpay/upomp/bypay/other/eh;->ab:Ljava/lang/String;

    sget-object v18, Lcom/unionpay/upomp/bypay/other/eh;->ac:Ljava/lang/String;

    sget-object v19, Lcom/unionpay/upomp/bypay/other/eh;->O:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v1 .. v20}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->j()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->e()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_2
    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->v:Ljava/lang/String;

    invoke-static {v6, v5, v1}, Lcom/unionpay/upomp/bypay/other/dh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :goto_4
    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->g()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v7, ""

    const-string v8, ""

    sget-object v9, Lcom/unionpay/upomp/bypay/other/eh;->as:Ljava/lang/String;

    sget-object v10, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    sget-object v11, Lcom/unionpay/upomp/bypay/other/eh;->an:Ljava/lang/String;

    sget-object v12, Lcom/unionpay/upomp/bypay/other/eh;->ap:Ljava/lang/String;

    sget-object v13, Lcom/unionpay/upomp/bypay/other/eh;->ao:Ljava/lang/String;

    sget-object v14, Lcom/unionpay/upomp/bypay/other/eh;->at:Ljava/lang/String;

    sget-object v15, Lcom/unionpay/upomp/bypay/other/eh;->u:Ljava/lang/String;

    sget-object v16, Lcom/unionpay/upomp/bypay/other/eh;->aj:Ljava/lang/String;

    sget-object v17, Lcom/unionpay/upomp/bypay/other/eh;->ab:Ljava/lang/String;

    sget-object v18, Lcom/unionpay/upomp/bypay/other/eh;->ac:Ljava/lang/String;

    const-string v19, ""

    const-string v20, ""

    invoke-static/range {v1 .. v20}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_6
    :try_start_3
    sget-object v2, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    if-eqz v2, :cond_7

    const/16 v2, 0xf0

    if-le v1, v2, :cond_8

    :cond_7
    const/4 v1, 0x0

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Lcom/unionpay/upomp/bypay/other/af;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "mmssSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x1f4

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    sput-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_a
    :try_start_6
    sget-boolean v1, Lcom/unionpay/upomp/bypay/other/eh;->b:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    const-string v1, "paybynormaldata_tag"

    sput-object v1, Lcom/unionpay/upomp/bypay/other/ae;->a:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-direct {v2}, Lcom/unionpay/upomp/bypay/other/dw;-><init>()V

    invoke-static {v1, v2}, Lcom/unionpay/upomp/bypay/other/ae;->a(Ljava/lang/String;Lorg/xml/sax/helpers/DefaultHandler;)Lorg/xml/sax/helpers/DefaultHandler;

    move-result-object v1

    check-cast v1, Lcom/unionpay/upomp/bypay/other/dw;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/other/dw;->a()Lcom/unionpay/upomp/bypay/other/u;

    move-result-object v1

    const/4 v2, 0x0

    sput-object v2, Lcom/unionpay/upomp/bypay/other/eh;->aM:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method protected a(Lcom/unionpay/upomp/bypay/other/u;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->a()V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_6

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->o:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->b()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_linkerror"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->o:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->c()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->e()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->f()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->av:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aw:Ljava/lang/String;

    sput-boolean v4, Lcom/unionpay/upomp/bypay/util/UPOMP;->payResult:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<upomp application=\"UpClose.Rsp\" pluginVersion=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<merchantId>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</merchantId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<respCode>0000</respCode>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<respDesc>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</respDesc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "</upomp>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:Ljava/lang/Boolean;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5309"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->n:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_error"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->showOKDialog(Ljava/lang/String;Ljava/lang/String;)V

    sput v4, Lcom/unionpay/upomp/bypay/other/eh;->k:I

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->a(Lcom/unionpay/upomp/bypay/activity/PayItActivity;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, ""

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<upomp application=\"UpClose.Rsp\" pluginVersion=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<merchantId>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</merchantId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<respCode>0002</respCode>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<respDesc>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/upomp/bypay/other/m;->a:Lcom/unionpay/upomp/bypay/activity/PayItActivity;

    invoke-virtual {v1}, Lcom/unionpay/upomp/bypay/activity/PayItActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_payfail"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</respDesc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "</upomp>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->m:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->e:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unionpay/upomp/bypay/other/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->aI:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/PayResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/m;->a([Ljava/lang/Integer;)Lcom/unionpay/upomp/bypay/other/u;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/unionpay/upomp/bypay/other/u;

    invoke-virtual {p0, p1}, Lcom/unionpay/upomp/bypay/other/m;->a(Lcom/unionpay/upomp/bypay/other/u;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "payit"

    sput-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->b(Landroid/content/Context;I)V

    return-void
.end method
