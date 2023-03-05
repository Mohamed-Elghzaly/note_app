import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_view_model.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteViewModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
