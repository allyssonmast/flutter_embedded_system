import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:embedded_system/app/modules/historico_sensores/domain/entity/perda.dart';
import 'package:embedded_system/app/modules/historico_sensores/domain/usecase/getAlllosers.dart';
import 'package:embedded_system/app/modules/historico_sensores/presentation/bloc/perdas_bloc.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:validadores/Validador.dart';

import '../../../../../injection.dart';
import '../../../../helpers/shered_widgets/error_widget.dart';
import '../../../../helpers/shered_widgets/my_circular_indicator.dart';
import '../../../../helpers/shered_widgets/no_item_widget.dart';

class PerdasView extends StatefulWidget {
  const PerdasView({Key? key}) : super(key: key);

  @override
  State<PerdasView> createState() => _PerdasViewState();
}

class _PerdasViewState extends State<PerdasView> {
  late Query<Perda> perdas;
  var textField = TextEditingController();
  var value = false;
  static final formKey12 = GlobalKey<FormState>();

  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  _featdata() {
    perdas = getIt<GetAllLosers>()();
  }

  @override
  void initState() {
    super.initState();
    _featdata();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PerdasBloc, PerdasState>(
        listener: (context, state) async {
          if (state.status.isError) {
            _btnController.error();
            await Future.delayed(const Duration(seconds: 2));
            _btnController.reset();
          } else if (state.status.isLoaded) {
            _btnController.success();
            await Future.delayed(const Duration(seconds: 2));
            _btnController.reset();
          }
        },
        child: Scaffold(
          body: Column(
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 10.sp),
                child: Padding(
                  padding: EdgeInsets.all(8.0.sp),
                  child: Form(
                    key: formKey12,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Adicione uma perda (Galinha ou ovo)',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w700),
                          ),
                        ),
                        SwitchListTile(
                          value: value,
                          title:  Text(value?'Perda de Ovo':'Perda de Galinha'),
                          onChanged: (onChanged) {
                            value = onChanged;
                            setState(() {});
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                          child: Row(
                            children: [
                              const Text('Quantidade:'),
                              SizedBox(
                                width: 10.sp,
                              ),
                              Expanded(
                                child: Card(
                                  elevation: 8,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    controller: textField,
                                    validator: (string) => Validador()
                                        .add(Validar.OBRIGATORIO,
                                            msg: "Campo obrigatório")
                                        .valido(string),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 8.sp,
                                        horizontal: 16.sp,
                                      ),
                                      border: InputBorder.none,
                                      isDense: true,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        RoundedLoadingButton(
                          color: Theme.of(context).cardColor,
                          controller: _btnController,
                          onPressed: () async {
                            if (formKey12.currentState!.validate()) {
                              final count = textField.text;
                              var perda = Perda(
                                isEgg: value,
                                count: int.parse(count),
                                dateTime: DateTime.now(),
                              );
                              context
                                  .read<PerdasBloc>()
                                  .add(PerdasEvent.featData(perda));
                            } else {
                              _btnController.error();
                              await Future.delayed(const Duration(seconds: 1));
                              _btnController.reset();
                            }
                          },
                          child: const Text('Salvar'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FirestoreQueryBuilder<Perda>(
                pageSize: 7,
                builder: (context, snapshot, _) {
                  if (snapshot.isFetching) {
                    return const MyCircularIndicator();
                  } else if (snapshot.hasError) {
                    return const FailureWidget();
                  } else if (snapshot.docs.isEmpty) {
                    return const NoItemWidget();
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0.sp, top: 20.sp),
                          child: Text(
                            'Perdas',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 20.sp),
                          ),
                        ),
                        ListView.builder(
                          itemCount: snapshot.docs.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final hasEndReached = snapshot.hasMore &&
                                index + 1 == snapshot.docs.length &&
                                !snapshot.isFetchingMore;
                            if (hasEndReached) {
                              snapshot.fetchMore();
                            }
                            final perda = snapshot.docs[index].data();
                            return ListTile(
                              subtitle: Text(
                                DateFormat('dd/MM/yyyy').format(perda.dateTime),
                              ),
                              title: Text(
                                perda.isEgg
                                    ? 'Perda de ovo'
                                    : 'Perda de galinha',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900),
                              ),
                              trailing: CircleAvatar(
                                child: Text(
                                  perda.count.toString(),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  }
                },
                query: perdas,
              ),
            ],
          ),
        ));
  }
}
